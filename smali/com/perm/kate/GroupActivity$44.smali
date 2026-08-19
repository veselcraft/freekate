.class Lcom/perm/kate/GroupActivity$44;
.super Lcom/perm/kate/session/Callback;
.source "GroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupActivity;->faveRemoveGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;)V
    .locals 0

    .line 1278
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$44;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 1292
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$44;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 1281
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$44;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1283
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$44;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 1284
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 1285
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1286
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$44;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/GroupActivity;->access$902(Lcom/perm/kate/GroupActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1287
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$44;->this$0:Lcom/perm/kate/GroupActivity;

    const v0, 0x7f0f0526

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    :cond_1
    return-void
.end method
