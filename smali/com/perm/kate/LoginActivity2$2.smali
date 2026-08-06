.class Lcom/perm/kate/LoginActivity2$2;
.super Ljava/lang/Object;
.source "LoginActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/LoginActivity2;->showOnlineSettingsDialog()V
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
    .line 124
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$2;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 128
    sget-object v2, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/perm/kate/Online;->setOnlineFlag(Z)V

    .line 129
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 130
    if-ne p2, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$2;->this$0:Lcom/perm/kate/LoginActivity2;

    const v1, 0x7f070333

    invoke-virtual {v0, v1}, Lcom/perm/kate/LoginActivity2;->displayToast(I)V

    .line 132
    :cond_0
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
