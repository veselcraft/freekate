.class Lcom/perm/kate/AudioAlbumsActivity$1;
.super Ljava/lang/Object;
.source "AudioAlbumsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioAlbumsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioAlbumsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioAlbumsActivity;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$1;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$1;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {p1}, Lcom/perm/kate/AudioAlbumsActivity;->access$000(Lcom/perm/kate/AudioAlbumsActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
