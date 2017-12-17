/**
 * APIサーバとの通信インタフェースモジュール
 */
import request from 'superagent'
const API_BASE = '/api'

const nop  = () => {}
const http = {

  /**
   * ユーザ一覧を取得
   */
  getUsers(success_callback, failure_callback = nop) {
    request.get(API_BASE + '/users').end((err, data) => {
      if (err) {
        failure_callback(err)
      } else {
        success_callback(data.body)
      }
    })
  },

  /**
   * ユーザ詳細を取得
   */
  getUser(user_id, success_callback, failure_callback = nop) {
    request.get(API_BASE + '/users/' + user_id).end((err, data) => {
      if (err) {
        failure_callback(err)
      } else {
        success_callback(data.body)
      }
    })
  },

  /**
   * ユーザのペット一覧を取得
   */
  getUserPets(user_id, success_callback, failure_callback = nop) {
    request.get(API_BASE + '/users/' + user_id + '/pets').end((err, data) => {
      if (err) {
        failure_callback(err)
      } else {
        success_callback(data.body)
      }
    })
  },

}

export default http
