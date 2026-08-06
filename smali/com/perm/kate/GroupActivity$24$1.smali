.class Lcom/perm/kate/GroupActivity$24$1;
.super Lcom/perm/kate/session/Callback;
.source "GroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupActivity$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/GroupActivity$24;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity$24;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/GroupActivity$24;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 798
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$24$1;->this$1:Lcom/perm/kate/GroupActivity$24;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 801
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 802
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$24$1;->this$1:Lcom/perm/kate/GroupActivity$24;

    iget-object v0, v0, Lcom/perm/kate/GroupActivity$24;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/GroupActivity;->is_messages_blocked:Ljava/lang/Integer;

    .line 803
    :cond_0
    return-void
.end method
