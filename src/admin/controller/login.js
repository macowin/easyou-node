'use strict';

import Base from './base.js';

export default class extends Base {
  /**
   * index action - login
   * @return {Promise} []
   */
  * indexAction (self) {
    if (this.isGet()) {
      return this.display();

    } else if (this.isPost()) {

      let map = {
        user: self.post('user'),
        pass: self.post('pass')
      };
      let data = yield self.model('users').login(map);

      if (think.isEmpty(data)) {
        self.redirect ('/login');
      } else {
        self.session('user', data);
        self.redirect('/admin');
      }
    }
  }
}