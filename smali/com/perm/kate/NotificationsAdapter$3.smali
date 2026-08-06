.class Lcom/perm/kate/NotificationsAdapter$3;
.super Ljava/lang/Object;
.source "NotificationsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NotificationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotificationsAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotificationsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NotificationsAdapter;

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/perm/kate/NotificationsAdapter$3;->this$0:Lcom/perm/kate/NotificationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 1283
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perm/kate/api/Video;

    .line 1285
    .local v10, "video":Lcom/perm/kate/api/Video;
    new-instance v0, Lcom/perm/kate/VideoMenu;

    iget-object v2, p0, Lcom/perm/kate/NotificationsAdapter$3;->this$0:Lcom/perm/kate/NotificationsAdapter;

    iget-object v2, v2, Lcom/perm/kate/NotificationsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {v0, v2, v1, v1}, Lcom/perm/kate/VideoMenu;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/BaseFragment;Lcom/perm/kate/VideoMenuCallback;)V

    iget-wide v2, v10, Lcom/perm/kate/api/Video;->vid:J

    iget-wide v4, v10, Lcom/perm/kate/api/Video;->owner_id:J

    iget-object v6, v10, Lcom/perm/kate/api/Video;->access_key:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual/range {v0 .. v10}, Lcom/perm/kate/VideoMenu;->display(Ljava/lang/Long;JJLjava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Lcom/perm/kate/api/Video;)V

    .line 1286
    return-void
.end method
