.class Lcom/perm/kate/session/Session$3$1;
.super Ljava/lang/Thread;
.source "Session.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/session/Session$3;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session$3;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/perm/kate/session/Session$3$1;->this$1:Lcom/perm/kate/session/Session$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/perm/kate/session/Session$3$1;->this$1:Lcom/perm/kate/session/Session$3;

    iget-object v1, v0, Lcom/perm/kate/session/Session$3;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session$3;->val$command:Lcom/perm/kate/session/Command;

    invoke-static {v1, v0}, Lcom/perm/kate/session/Session;->access$000(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Command;)V

    return-void
.end method
