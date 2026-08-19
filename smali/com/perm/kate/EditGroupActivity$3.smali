.class Lcom/perm/kate/EditGroupActivity$3;
.super Lcom/perm/kate/session/Callback;
.source "EditGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditGroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditGroupActivity;Landroid/app/Activity;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity$3;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 247
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$3;->this$0:Lcom/perm/kate/EditGroupActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 248
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$3;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p1}, Lcom/perm/kate/EditGroupActivity;->access$900(Lcom/perm/kate/EditGroupActivity;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity$3;->this$0:Lcom/perm/kate/EditGroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 242
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity$3;->this$0:Lcom/perm/kate/EditGroupActivity;

    check-cast p1, Lcom/perm/kate/api/GroupSettings;

    invoke-static {v0, p1}, Lcom/perm/kate/EditGroupActivity;->access$602(Lcom/perm/kate/EditGroupActivity;Lcom/perm/kate/api/GroupSettings;)Lcom/perm/kate/api/GroupSettings;

    .line 243
    iget-object p1, p0, Lcom/perm/kate/EditGroupActivity$3;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {p1}, Lcom/perm/kate/EditGroupActivity;->access$900(Lcom/perm/kate/EditGroupActivity;)V

    return-void
.end method
