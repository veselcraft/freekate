.class Lcom/perm/kate/session/Session$1$1;
.super Ljava/lang/Thread;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session$1;->complete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/session/Session$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/session/Session$1;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/perm/kate/session/Session$1$1;->this$1:Lcom/perm/kate/session/Session$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/perm/kate/session/Session$1$1;->this$1:Lcom/perm/kate/session/Session$1;

    iget-object v0, v0, Lcom/perm/kate/session/Session$1;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/session/Session$1$1;->this$1:Lcom/perm/kate/session/Session$1;

    iget-object v1, v1, Lcom/perm/kate/session/Session$1;->val$command:Lcom/perm/kate/session/Command;

    invoke-static {v0, v1}, Lcom/perm/kate/session/Session;->access$000(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Command;)V

    .line 173
    return-void
.end method
