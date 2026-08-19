.class Lcom/perm/kate/GroupActivity$40;
.super Lcom/perm/kate/session/Callback;
.source "GroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupActivity;->groupsInvite(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupActivity;

.field final synthetic val$user_ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 0

    .line 1200
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$40;->this$0:Lcom/perm/kate/GroupActivity;

    iput-object p3, p0, Lcom/perm/kate/GroupActivity$40;->val$user_ids:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 1207
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$40;->val$user_ids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1209
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1215
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$40;->this$0:Lcom/perm/kate/GroupActivity;

    const v0, 0x7f0f0546

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    :goto_0
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 1203
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$40;->this$0:Lcom/perm/kate/GroupActivity;

    const v0, 0x7f0f0546

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return-void
.end method
