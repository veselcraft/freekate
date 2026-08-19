.class Lcom/perm/kate/VideoMenu$9;
.super Lcom/perm/kate/session/Callback;
.source "VideoMenu.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoMenu;

.field final synthetic val$owner_id:J

.field final synthetic val$video_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoMenu;Landroid/app/Activity;JJ)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/perm/kate/VideoMenu$9;->this$0:Lcom/perm/kate/VideoMenu;

    iput-wide p3, p0, Lcom/perm/kate/VideoMenu$9;->val$video_id:J

    iput-wide p5, p0, Lcom/perm/kate/VideoMenu$9;->val$owner_id:J

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 6

    .line 369
    check-cast p1, Ljava/lang/Boolean;

    .line 370
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 372
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/VideoMenu$9;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v0, p1, Lcom/perm/kate/VideoMenu;->callback:Lcom/perm/kate/VideoMenuCallback;

    if-eqz v0, :cond_1

    .line 373
    iget-wide v1, p0, Lcom/perm/kate/VideoMenu$9;->val$video_id:J

    iget-wide v3, p0, Lcom/perm/kate/VideoMenu$9;->val$owner_id:J

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/perm/kate/VideoMenuCallback;->faveChanged(JJZ)V

    .line 374
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/VideoMenu$9;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object p1, p1, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const v0, 0x7f0f00c9

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return-void
.end method
