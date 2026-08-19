.class Lcom/perm/kate/LoginActivity2$1;
.super Ljava/lang/Object;
.source "LoginActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/LoginActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LoginActivity2;


# direct methods
.method constructor <init>(Lcom/perm/kate/LoginActivity2;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$1;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 86
    iget-object p1, p0, Lcom/perm/kate/LoginActivity2$1;->this$0:Lcom/perm/kate/LoginActivity2;

    iget-object v0, p1, Lcom/perm/kate/LoginActivity2;->progressView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/perm/kate/LoginActivity2;->showView(Landroid/view/View;)V

    .line 87
    new-instance p1, Lcom/perm/kate/LoginActivity2$1$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/LoginActivity2$1$1;-><init>(Lcom/perm/kate/LoginActivity2$1;)V

    .line 92
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
