.class Lcom/perm/kate/NotificationsAdapter$3;
.super Ljava/lang/Object;
.source "NotificationsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotificationsAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotificationsAdapter;)V
    .locals 0

    .line 1313
    iput-object p1, p0, Lcom/perm/kate/NotificationsAdapter$3;->this$0:Lcom/perm/kate/NotificationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 16

    .line 1317
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/perm/kate/api/Video;

    .line 1319
    new-instance v1, Lcom/perm/kate/VideoMenu;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NotificationsAdapter$3;->this$0:Lcom/perm/kate/NotificationsAdapter;

    iget-object v2, v2, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/perm/kate/VideoMenu;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/BaseFragment;Lcom/perm/kate/VideoMenuCallback;)V

    iget-wide v3, v12, Lcom/perm/kate/api/Video;->vid:J

    iget-wide v5, v12, Lcom/perm/kate/api/Video;->owner_id:J

    iget-object v7, v12, Lcom/perm/kate/api/Video;->access_key:Ljava/lang/String;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v11

    invoke-virtual/range {v1 .. v15}, Lcom/perm/kate/VideoMenu;->display(Ljava/lang/Long;JJLjava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Boolean;Lcom/perm/kate/api/Video;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
