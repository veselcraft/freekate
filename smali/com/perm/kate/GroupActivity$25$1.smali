.class Lcom/perm/kate/GroupActivity$25$1;
.super Lcom/perm/kate/session/Callback;
.source "GroupActivity.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/GroupActivity$25;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity$25;Landroid/app/Activity;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$25$1;->this$1:Lcom/perm/kate/GroupActivity$25;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 855
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 856
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$25$1;->this$1:Lcom/perm/kate/GroupActivity$25;

    iget-object p1, p1, Lcom/perm/kate/GroupActivity$25;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/perm/kate/GroupActivity;->is_messages_blocked:Ljava/lang/Integer;

    :cond_0
    return-void
.end method
