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
    .param p1, "this$0"    # Lcom/perm/kate/LoginActivity2;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$1;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$1;->this$0:Lcom/perm/kate/LoginActivity2;

    iget-object v1, p0, Lcom/perm/kate/LoginActivity2$1;->this$0:Lcom/perm/kate/LoginActivity2;

    iget-object v1, v1, Lcom/perm/kate/LoginActivity2;->progressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/perm/kate/LoginActivity2;->showView(Landroid/view/View;)V

    .line 84
    new-instance v0, Lcom/perm/kate/LoginActivity2$1$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/LoginActivity2$1$1;-><init>(Lcom/perm/kate/LoginActivity2$1;)V

    .line 89
    invoke-virtual {v0}, Lcom/perm/kate/LoginActivity2$1$1;->start()V

    .line 90
    return-void
.end method
