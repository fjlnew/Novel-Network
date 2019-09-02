const DbBase = require('./dbBase');
class UserModle extends DbBase {

    getbookkinds(callback) {
        let sql = `SELECT * FROM bookkinds`;
        this.mydb.query(sql, (err, results, fields) => {
            if (err) {
                callback(err);
            } else {
                callback(results);
            }
        })
    }
    getweekbooks(callback) {
        let sql = `SELECT kindname,bookid,bookname,bookautor,bookReaders FROM allbooks,bookkinds WHERE allbooks.kindid=bookkinds.kindid LIMIT 0, 18;`;
        this.mydb.query(sql, (err, results, fields) => {
            if (err) {
                callback(err);
            } else {
                callback(results);
            }
        })
    }
    // getweekbooks(weekbooksgo,callback){
    //     let sql = `SELECT kindname,bookname,bookautor,bookReaders FROM allbooks,bookkinds WHERE allbooks.kindid=bookkinds.kindid LIMIT ${weekbooksgo}, 18;`;
    //     this.mydb.query(sql,(err,results,fields)=>{
    //         if(err){
    //             callback(err);
    //         }else{
    //             callback(results);
    //         }
    //     })
    // }
    getnewbooks(callback) {
        let sql = `SELECT kindname,bookid,bookname,bookautor,bookReaders FROM allbooks,bookkinds WHERE allbooks.kindid=bookkinds.kindid LIMIT 6, 18;`;
        this.mydb.query(sql, (err, results, fields) => {
            if (err) {
                callback(err);
            } else {
                callback(results);
            }
        })
    }
    getlunbobox(callback) {
        let sql = `SELECT * FROM allbooks LIMIT 26,5`;
        this.mydb.query(sql, (err, results, fields) => {
            if (err) {
                callback(err);
            } else {
                callback(results);
            }
        })
    }
    insertuser(userphone, userpassworld, callback) {
        let sql = `INSERT INTO USER (userphone,username,userpassword)VALUES ('${userphone}','user${userphone}','${userpassworld}');`;
        this.mydb.query(sql, (err, results, fields) => {
            if (err) {
                callback(err);
            } else {
                callback(results);
            }
        })
    }
    tuijianbook(callback) {
        let sql = `SELECT * FROM allbooks LIMIT 3, 6;`;
        this.mydb.query(sql, (err, results, fields) => {
            if (err) {
                callback(err);
            } else {
                callback(results);
            }
        })
    }

    getonebookcapterviews(bookid, callback) {
        let sql = `SELECT bookchapter,bookchaptername,chaptersize,chapterid FROM onebook WHERE bookid=${bookid}`
        this.mydb.query(sql, (err, results, fields) => {
            if (err) {
                callback(err);
            } else {
                callback(results);
            }
        })

    }

    getonebookviews(bookid, callback) {
        let sql = `SELECT * FROM allbooks WHERE bookid=${bookid}`
        this.mydb.query(sql, (err, results, fields) => {
            if (err) {
                callback(err);
            } else {
                callback(results);
            }
        })
    }
    getcaptername(bookid, callback) {
        let sql = `SELECT capterid,captername FROM captername WHERE bookid=${bookid}`;
        this.mydb.query(sql, (err, results, fields) => {
            if (err) {
                callback(err);
            } else {
                callback(results);
            }
        })
    }

    selectpeople(username, passworld, callback) {
        let sql = `SELECT userid,username FROM USER WHERE userphone=${username} AND userpassword=${passworld}`;
        this.mydb.query(sql, (err, results, fields) => {
            if (err) {
                callback(err);
            } else {
                if (results.length == 0) {
                    callback({
                        haveit: false,
                    })
                }else{
                    callback({
                        haveit: results,
                    })
                }
            }
        })
    }
}
module.exports = UserModle;