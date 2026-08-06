.class Lcom/perm/kate/ProfileFragment$36;
.super Lcom/perm/kate/session/Callback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1510
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$36;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$36;->this$0:Lcom/perm/kate/ProfileFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/ProfileFragment;->showProgressBar(Z)V

    .line 1522
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 1523
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 1513
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$36;->this$0:Lcom/perm/kate/ProfileFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/ProfileFragment;->showProgressBar(Z)V

    move-object v0, p1

    .line 1514
    check-cast v0, Ljava/lang/Long;

    .line 1515
    .local v0, "response":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1516
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$36;->this$0:Lcom/perm/kate/ProfileFragment;

    const v2, 0x7f0700af

    invoke-virtual {v1, v2}, Lcom/perm/kate/ProfileFragment;->displayToast(I)V

    .line 1517
    :cond_0
    return-void
.end method
