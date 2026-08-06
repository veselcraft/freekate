.class Lcom/perm/kate/MessageSaveActivity$5;
.super Ljava/lang/Object;
.source "MessageSaveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageSaveActivity;
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
    .line 185
    iput-object p1, p0, Lcom/perm/kate/MessageSaveActivity$5;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$5;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-virtual {v0}, Lcom/perm/kate/MessageSaveActivity;->finish()V

    .line 189
    return-void
.end method
