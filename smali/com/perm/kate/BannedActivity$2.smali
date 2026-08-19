.class Lcom/perm/kate/BannedActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "BannedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/BannedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BannedActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BannedActivity;Landroid/app/Activity;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/perm/kate/BannedActivity$2;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 63
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 64
    iget-object p1, p0, Lcom/perm/kate/BannedActivity$2;->this$0:Lcom/perm/kate/BannedActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 52
    check-cast p1, Lcom/perm/kate/api/BannArg;

    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/perm/kate/BannedActivity$2;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/BannedActivity;->access$100(Lcom/perm/kate/BannedActivity;Lcom/perm/kate/api/BannArg;)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/BannedActivity$2;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-static {p1}, Lcom/perm/kate/BannedActivity;->access$200(Lcom/perm/kate/BannedActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 57
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/BannedActivity$2;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-static {p1}, Lcom/perm/kate/BannedActivity;->access$300(Lcom/perm/kate/BannedActivity;)V

    .line 58
    iget-object p1, p0, Lcom/perm/kate/BannedActivity$2;->this$0:Lcom/perm/kate/BannedActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
