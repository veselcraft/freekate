.class Lcom/perm/kate/MyStickersActivity$1;
.super Ljava/lang/Object;
.source "MyStickersActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MyStickersActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MyStickersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MyStickersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MyStickersActivity;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/perm/kate/MyStickersActivity$1;->this$0:Lcom/perm/kate/MyStickersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    .line 46
    invoke-static {p2}, Lcom/perm/kate/StickerHints;->setShowStickerHints(Z)V

    .line 47
    return-void
.end method
