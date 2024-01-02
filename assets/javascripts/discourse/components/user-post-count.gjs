// user-post-count.js

import Component from "@ember/component";
import I18n from "discourse-i18n";

export default class UserPostCount extends Component {
  shouldRender() {
    return this.postCount > 0;
  }

  get content() {
    return I18n.t("user_post_count.content", { count: this.postCount });
  }

  get postCount() {
    return this.outletArgs?.user.post_count || this.count || 0;
  }

  get translatedContent() {
    return this.content;
  }
}
