'use strict';

import Base from './base.js';

export default class extends Base {
  /**
   * index action - reg
   * @return {Promise} []
   */
  * indexAction (self) {
    self.session('user', '');
    self.redirect('/');
  }
}