import { hbs } from "ember-cli-htmlbars";
import RenderGlimmer from "discourse/widgets/render-glimmer";
import { createWidget } from "discourse/widgets/widget";

export default createWidget("user-post-count", {
  html(attrs) {
    return new RenderGlimmer(
      this,
      "div.user-post-user__container",
      hbs`<UserPostCount @count={{ @data.count }} />`,
      {
        count: attrs.user_post_count,
      }
    );
  },
});
