.class Lcom/perm/kate/ForwardedMessagesActivity$1;
.super Ljava/lang/Thread;
.source "ForwardedMessagesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ForwardedMessagesActivity;->getMissingUsersInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ForwardedMessagesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/ForwardedMessagesActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/perm/kate/ForwardedMessagesActivity$1;->this$0:Lcom/perm/kate/ForwardedMessagesActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/perm/kate/ForwardedMessagesActivity$1;->this$0:Lcom/perm/kate/ForwardedMessagesActivity;

    iget-object v1, v0, Lcom/perm/kate/ForwardedMessagesActivity;->messages:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/perm/kate/ForwardedMessagesActivity;->access$000(Lcom/perm/kate/ForwardedMessagesActivity;Ljava/util/ArrayList;)V

    .line 71
    iget-object v0, p0, Lcom/perm/kate/ForwardedMessagesActivity$1;->this$0:Lcom/perm/kate/ForwardedMessagesActivity;

    invoke-static {v0}, Lcom/perm/kate/ForwardedMessagesActivity;->access$100(Lcom/perm/kate/ForwardedMessagesActivity;)V

    return-void
.end method
