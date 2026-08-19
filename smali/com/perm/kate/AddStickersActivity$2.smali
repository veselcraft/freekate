.class Lcom/perm/kate/AddStickersActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "AddStickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AddStickersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AddStickersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AddStickersActivity;Landroid/app/Activity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/perm/kate/AddStickersActivity$2;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/perm/kate/AddStickersActivity$2;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    .line 70
    iget-object v0, p0, Lcom/perm/kate/AddStickersActivity$2;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/AddStickersActivity;->access$100(Lcom/perm/kate/AddStickersActivity;Ljava/util/ArrayList;)V

    return-void
.end method
