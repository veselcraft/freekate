.class Lcom/perm/kate/GroupActivity$41;
.super Lcom/perm/kate/session/Callback;
.source "GroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupActivity;->faveAddGroup()V
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
    .param p1, "this$0"    # Lcom/perm/kate/GroupActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$41;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$41;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupActivity;->showProgressBar(Z)V

    .line 1199
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 1187
    iget-object v1, p0, Lcom/perm/kate/GroupActivity$41;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual {v1}, Lcom/perm/kate/GroupActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1195
    :cond_0
    :goto_0
    return-void

    .line 1189
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/GroupActivity$41;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/GroupActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 1190
    check-cast v0, Ljava/lang/Integer;

    .line 1191
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1192
    iget-object v1, p0, Lcom/perm/kate/GroupActivity$41;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/GroupActivity;->access$902(Lcom/perm/kate/GroupActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1193
    iget-object v1, p0, Lcom/perm/kate/GroupActivity$41;->this$0:Lcom/perm/kate/GroupActivity;

    const v2, 0x7f07049b

    invoke-virtual {v1, v2}, Lcom/perm/kate/GroupActivity;->displayToast(I)V

    goto :goto_0
.end method
