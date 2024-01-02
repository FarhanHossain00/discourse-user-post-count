// user-post-count.js

import { hbs } from "ember-cli-htmlbars";
import RenderGlimmer from "discourse/widgets/render-glimmer";
import { createWidget } from "discourse/widgets/widget";

export default createWidget("user-post-count", {
  html(attrs) {
    return new RenderGlimmer(
      this,
      "span.user-post-count",
      hbs`{{#if attrs.user_post_count}}
              <span class="user-post-count" data-count={{attrs.user_post_count}}>
                {{attrs.translatedContent}}
              </span>
           {{/if}}`,
      {
        user_post_count: attrs.user_post_count,
        translatedContent: attrs.translatedContent,
      }
    );
  },
});
