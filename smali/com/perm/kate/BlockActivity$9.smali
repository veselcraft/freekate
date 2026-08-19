.class Lcom/perm/kate/BlockActivity$9;
.super Ljava/lang/Object;
.source "BlockActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/BlockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BlockActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BlockActivity;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/perm/kate/BlockActivity$9;->this$0:Lcom/perm/kate/BlockActivity;

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

    .line 253
    iget-object p1, p0, Lcom/perm/kate/BlockActivity$9;->this$0:Lcom/perm/kate/BlockActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/perm/kate/BlockActivity;->access$000(Lcom/perm/kate/BlockActivity;Z)V

    return-void
.end method
