.class Lcom/perm/kate/BlockActivity$5;
.super Ljava/lang/Object;
.source "BlockActivity.java"

# interfaces
.implements Lcom/perm/utils/FingerprintManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BlockActivity;->showFingerprintDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BlockActivity;

.field final synthetic val$fingerprint_text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/perm/kate/BlockActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/perm/kate/BlockActivity$5;->this$0:Lcom/perm/kate/BlockActivity;

    iput-object p2, p0, Lcom/perm/kate/BlockActivity$5;->val$fingerprint_text:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/perm/kate/BlockActivity$5;->val$fingerprint_text:Landroid/widget/TextView;

    const-string v1, "#F4511E"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object v0, p0, Lcom/perm/kate/BlockActivity$5;->val$fingerprint_text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public success()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/perm/kate/BlockActivity$5;->this$0:Lcom/perm/kate/BlockActivity;

    invoke-static {v0}, Lcom/perm/kate/BlockActivity;->access$400(Lcom/perm/kate/BlockActivity;)V

    return-void
.end method
