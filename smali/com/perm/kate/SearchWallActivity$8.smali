.class Lcom/perm/kate/SearchWallActivity$8;
.super Lcom/perm/kate/session/Callback;
.source "SearchWallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchWallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchWallActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchWallActivity;Landroid/app/Activity;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$8;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 287
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 288
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$8;->this$0:Lcom/perm/kate/SearchWallActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/SearchWallActivity;->access$1002(Lcom/perm/kate/SearchWallActivity;I)I

    .line 289
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$8;->this$0:Lcom/perm/kate/SearchWallActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 280
    check-cast p1, Ljava/util/ArrayList;

    .line 281
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$8;->this$0:Lcom/perm/kate/SearchWallActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/perm/kate/SearchWallActivity;->access$700(Lcom/perm/kate/SearchWallActivity;Ljava/util/ArrayList;Z)V

    .line 282
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$8;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-virtual {p1, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
