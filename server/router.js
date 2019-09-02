var express = require('express');
const fs = require('fs');
const UserModel = require('../sqlpage/usermodel');
const session = require('express-session')

var router = express.Router();

let secret = 'com.mydomain.app.h519061';

router.use(session({
    saveUninitialized: true,
    secret: secret,
    resave: false,
    cookie: {
        maxAge: 24 * 60 * 60 * 1000
    }, //cookie设置过期时间
}))

router.get('/', function (req, res) {
    var peopleviews = req.session.peopleviews;
    res.render('centertap.html', {
        people: peopleviews
    })
})
router.get('/centertap', function (req, res) {
    var peopleviews = req.session.peopleviews;
    res.render('centertap.html', {
        people: peopleviews
    })
})
router.get('/register', function (req, res) {
    res.render('register.html')
})
router.post('/getbookkinds', function (req, res) {
    new UserModel().getbookkinds((data1) => {
        return res.status(200).json({
            bookkinds: data1,
        })
    });
})
router.post('/getweekbooks', function (req, res) {
    new UserModel().getweekbooks((data2) => {
        return res.status(200).json({
            weekbooks: data2,
        })
    });
})
router.post('/getnewbooks', function (req, res) {
    new UserModel().getnewbooks((data3) => {
        return res.status(200).json({
            newbooks: data3
        })
    });
})
router.post('/lunbobox', function (req, res) {
    new UserModel().getlunbobox((data3) => {
        return res.status(200).json({
            lunbobox: data3
        })
    });
})
router.post('/tuijianbook', function (req, res) {
    new UserModel().tuijianbook((data) => {
        return res.status(200).json({
            tuijianbook: data
        })
    });
})

router.get('/bookviews', function (req, res) {
    var bookid = req.query.bookid;
    new UserModel().getonebookviews(bookid, (data1) => {
        new UserModel().getonebookcapterviews(bookid, (data2) => {
            new UserModel().getcaptername(bookid, (data3) => {
                var peopleviews = req.session.peopleviews;
                var bookview = {
                    'bookviews': data1,
                    'bookcapterviews': data2,
                    'captername': data3,
                    'people': peopleviews
                }
                return res.render('bookviews.html', {
                    bookview: bookview
                })
            });
        });
    });

})

router.post('/register', function (req, res) {
    const {
        userphone,
        userpassworld
    } = req.body;
    new UserModel().insertuser(userphone, userpassworld, (results) => {
        if (results.affectedRows == 1) {
            return res.status(200).json({
                isok: 1
            })
        } else {
            return res.status(200).json({
                isok: 0
            })
        }
    });
})

router.post('/gotologin', function (req, res) {
    const {
        username,
        passworld
    } = req.body;
    new UserModel().selectpeople(username, passworld, (results) => {
        if (results.haveit) {
            req.session.peopleviews = results.haveit;
        }
        return res.status(200).json({
            haveit: results, 
        })
    });

})
router.get('/loginout', function (req, res) {
    req.session.destroy();
    res.redirect('/');
})




module.exports = router