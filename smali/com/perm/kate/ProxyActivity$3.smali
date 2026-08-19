.class Lcom/perm/kate/ProxyActivity$3;
.super Ljava/lang/Object;
.source "ProxyActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProxyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProxyActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProxyActivity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/perm/kate/ProxyActivity$3;->this$0:Lcom/perm/kate/ProxyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 86
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/utils/ProxyManager;->setServer(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/perm/kate/ProxyActivity$3;->this$0:Lcom/perm/kate/ProxyActivity;

    iget-object p1, p1, Lcom/perm/kate/ProxyActivity;->statusView:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
