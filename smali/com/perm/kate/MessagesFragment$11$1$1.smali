.class Lcom/perm/kate/MessagesFragment$11$1$1;
.super Ljava/lang/Object;
.source "MessagesFragment.java"

# interfaces
.implements Lcom/perm/kate/MessagesFragment$DeleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessagesFragment$11$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/perm/kate/MessagesFragment$11$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment$11$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/perm/kate/MessagesFragment$11$1;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$11$1$1;->this$2:Lcom/perm/kate/MessagesFragment$11$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleted()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$11$1$1;->this$2:Lcom/perm/kate/MessagesFragment$11$1;

    iget-object v0, v0, Lcom/perm/kate/MessagesFragment$11$1;->this$1:Lcom/perm/kate/MessagesFragment$11;

    iget-object v0, v0, Lcom/perm/kate/MessagesFragment$11;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object v0, v0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 466
    return-void
.end method
