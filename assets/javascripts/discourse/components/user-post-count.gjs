import Component from "@ember/component";
import I18n from "discourse-i18n";

export default class UserPostCount extends Component {
  <template>
    {{#if this.shouldRender}}
      <div class="user-post-count" data-count="{{this.postCount}}">
        {{this.content}}
      </div>
    {{/if}}
  </template>

  get shouldRender() {
    return this.postCount > 0;
  }

  get content() {
    return I18n.t("user_post_count.content", { count: this.postCount });
  }

  get postCount() {
    return this.outletArgs?.user.post_count || this.count || 0;
  }
}
