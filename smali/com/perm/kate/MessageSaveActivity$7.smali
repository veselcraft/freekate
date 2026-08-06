.class Lcom/perm/kate/MessageSaveActivity$7;
.super Ljava/lang/Object;
.source "MessageSaveActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageSaveActivity;->displayErrorState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageSaveActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageSaveActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageSaveActivity;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/perm/kate/MessageSaveActivity$7;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$7;->this$0:Lcom/perm/kate/MessageSaveActivity;

    const v1, 0x7f0e023b

    invoke-virtual {v0, v1}, Lcom/perm/kate/MessageSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0702e3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 273
    return-void
.end method
