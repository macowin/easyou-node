'use strict';

import Base from './base.js';

export default class extends Base {
  /**
   * index action - reg
   * @return {Promise} []
   */
  * indexAction (self) {
    if (self.isGet()) {
      return self.display()

    } else if (self.isPost()) {
      let map = {
        user: self.post('user'),
        pass: self.post('pass')
      }
      let data = yield self.model('users').reg(map);

      if (data) {
        self.redirect('/login');
      } else {
        self.redirect('/reg');
      }
    }
  }
}