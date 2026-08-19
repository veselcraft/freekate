.class Lcom/perm/kate/GroupActivity$26$1;
.super Lcom/perm/kate/session/Callback;
.source "GroupActivity.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/GroupActivity$26;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity$26;Landroid/app/Activity;)V
    .locals 0

    .line 868
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$26$1;->this$1:Lcom/perm/kate/GroupActivity$26;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 871
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 872
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$26$1;->this$1:Lcom/perm/kate/GroupActivity$26;

    iget-object p1, p1, Lcom/perm/kate/GroupActivity$26;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/perm/kate/GroupActivity;->is_messages_blocked:Ljava/lang/Integer;

    :cond_0
    return-void
.end method
