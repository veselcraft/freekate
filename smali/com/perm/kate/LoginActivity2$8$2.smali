.class Lcom/perm/kate/LoginActivity2$8$2;
.super Ljava/lang/Object;
.source "LoginActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/LoginActivity2$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/LoginActivity2$8;


# direct methods
.method constructor <init>(Lcom/perm/kate/LoginActivity2$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/LoginActivity2$8;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$8$2;->this$1:Lcom/perm/kate/LoginActivity2$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$8$2;->this$1:Lcom/perm/kate/LoginActivity2$8;

    iget-object v0, v0, Lcom/perm/kate/LoginActivity2$8;->this$0:Lcom/perm/kate/LoginActivity2;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.DATE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/LoginActivity2;->startActivity(Landroid/content/Intent;)V

    .line 261
    return-void
.end method
