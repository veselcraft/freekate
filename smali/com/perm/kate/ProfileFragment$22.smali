.class Lcom/perm/kate/ProfileFragment$22;
.super Lcom/perm/kate/session/Callback;
.source "ProfileFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V
    .locals 0

    .line 1098
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$22;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 1108
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 1110
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$22;->this$0:Lcom/perm/kate/ProfileFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/perm/kate/ProfileFragment;->access$3000(Lcom/perm/kate/ProfileFragment;Ljava/util/ArrayList;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 1102
    check-cast p1, Ljava/util/ArrayList;

    .line 1103
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$22;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/ProfileFragment;->access$3000(Lcom/perm/kate/ProfileFragment;Ljava/util/ArrayList;)V

    return-void
.end method
