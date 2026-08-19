.class Lcom/perm/kate/LoginActivity2$8$2;
.super Ljava/lang/Object;
.source "LoginActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/LoginActivity2$8;


# direct methods
.method constructor <init>(Lcom/perm/kate/LoginActivity2$8;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$8$2;->this$1:Lcom/perm/kate/LoginActivity2$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 272
    iget-object p1, p0, Lcom/perm/kate/LoginActivity2$8$2;->this$1:Lcom/perm/kate/LoginActivity2$8;

    iget-object p1, p1, Lcom/perm/kate/LoginActivity2$8;->this$0:Lcom/perm/kate/LoginActivity2;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.DATE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
