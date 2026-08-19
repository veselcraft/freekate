.class Lcom/perm/kate/LoginActivity2$1$1;
.super Ljava/lang/Thread;
.source "LoginActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/LoginActivity2$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/LoginActivity2$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/LoginActivity2$1;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$1$1;->this$1:Lcom/perm/kate/LoginActivity2$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$1$1;->this$1:Lcom/perm/kate/LoginActivity2$1;

    iget-object v0, v0, Lcom/perm/kate/LoginActivity2$1;->this$0:Lcom/perm/kate/LoginActivity2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v1, v2}, Lcom/perm/kate/LoginActivity2;->access$000(Lcom/perm/kate/LoginActivity2;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
