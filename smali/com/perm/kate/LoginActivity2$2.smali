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

    .line 131
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$2;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 135
    sget-object v0, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/perm/kate/Online;->setOnlineFlag(Z)V

    .line 136
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    if-ne p2, v1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/perm/kate/LoginActivity2$2;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-static {p1}, Lcom/perm/kate/DashboardFragment;->offlineAlert(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method
