.class Lcom/perm/kate/MessagesFragment$7;
.super Ljava/lang/Object;
.source "MessagesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessagesFragment;->requeryOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessagesFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$7;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$7;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object v0, v0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    return-void
.end method
