.class Lcom/perm/kate/BlockActivity$6;
.super Ljava/lang/Object;
.source "BlockActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BlockActivity;->showFingerprintDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fingerprintManager:Lcom/perm/utils/FingerprintManager;


# direct methods
.method constructor <init>(Lcom/perm/kate/BlockActivity;Lcom/perm/utils/FingerprintManager;)V
    .locals 0

    .line 163
    iput-object p2, p0, Lcom/perm/kate/BlockActivity$6;->val$fingerprintManager:Lcom/perm/utils/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 167
    iget-object p1, p0, Lcom/perm/kate/BlockActivity$6;->val$fingerprintManager:Lcom/perm/utils/FingerprintManager;

    invoke-virtual {p1}, Lcom/perm/utils/FingerprintManager;->cancelIdentify()V

    return-void
.end method
