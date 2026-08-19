.class Lcom/perm/kate/MessagesFragment$13$1$1;
.super Ljava/lang/Object;
.source "MessagesFragment.java"

# interfaces
.implements Lcom/perm/kate/MessagesFragment$DeleteCallback;


# instance fields
.field final synthetic this$2:Lcom/perm/kate/MessagesFragment$13$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment$13$1;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$13$1$1;->this$2:Lcom/perm/kate/MessagesFragment$13$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleted()V
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$13$1$1;->this$2:Lcom/perm/kate/MessagesFragment$13$1;

    iget-object v0, v0, Lcom/perm/kate/MessagesFragment$13$1;->this$1:Lcom/perm/kate/MessagesFragment$13;

    iget-object v0, v0, Lcom/perm/kate/MessagesFragment$13;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object v0, v0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    return-void
.end method
