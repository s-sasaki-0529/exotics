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
    request.get(API_BASE + '/user').end((err, data) => {
      if (err) {
        failure_callback(err)
      } else {
        success_callback(data.body)
      }
    })
  }

}

export default http
