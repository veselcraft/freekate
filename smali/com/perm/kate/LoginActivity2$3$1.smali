.class Lcom/perm/kate/LoginActivity2$3$1;
.super Ljava/lang/Thread;
.source "LoginActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/LoginActivity2$3;->complete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/LoginActivity2$3;

.field final synthetic val$user_input:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/LoginActivity2$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/LoginActivity2$3;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$3$1;->this$1:Lcom/perm/kate/LoginActivity2$3;

    iput-object p2, p0, Lcom/perm/kate/LoginActivity2$3$1;->val$user_input:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$3$1;->this$1:Lcom/perm/kate/LoginActivity2$3;

    iget-object v0, v0, Lcom/perm/kate/LoginActivity2$3;->this$0:Lcom/perm/kate/LoginActivity2;

    iget-object v1, p0, Lcom/perm/kate/LoginActivity2$3$1;->this$1:Lcom/perm/kate/LoginActivity2$3;

    iget-object v1, v1, Lcom/perm/kate/LoginActivity2$3;->val$sid:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/LoginActivity2$3$1;->val$user_input:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/LoginActivity2$3$1;->this$1:Lcom/perm/kate/LoginActivity2$3;

    iget-boolean v3, v3, Lcom/perm/kate/LoginActivity2$3;->val$is_retry:Z

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/LoginActivity2;->access$000(Lcom/perm/kate/LoginActivity2;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 173
    return-void
.end method
