.class Lcom/perm/kate/PopupActivity$1;
.super Ljava/lang/Object;
.source "PopupActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PopupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PopupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PopupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PopupActivity;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/perm/kate/PopupActivity$1;->this$0:Lcom/perm/kate/PopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 117
    if-eqz p2, :cond_0

    .line 118
    iget-object v0, p0, Lcom/perm/kate/PopupActivity$1;->this$0:Lcom/perm/kate/PopupActivity;

    invoke-static {v0}, Lcom/perm/kate/PopupActivity;->access$000(Lcom/perm/kate/PopupActivity;)V

    .line 119
    :cond_0
    return-void
.end method
