.class Lcom/perm/kate/ForwardedMessagesActivity$2;
.super Ljava/lang/Object;
.source "ForwardedMessagesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ForwardedMessagesActivity;->redisplayData()V
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
    .param p1, "this$0"    # Lcom/perm/kate/ForwardedMessagesActivity;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/perm/kate/ForwardedMessagesActivity$2;->this$0:Lcom/perm/kate/ForwardedMessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/perm/kate/ForwardedMessagesActivity$2;->this$0:Lcom/perm/kate/ForwardedMessagesActivity;

    iget-object v0, v0, Lcom/perm/kate/ForwardedMessagesActivity;->adapter:Lcom/perm/kate/MessageAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/MessageAdapter;->notifyDataSetChanged()V

    .line 113
    return-void
.end method
