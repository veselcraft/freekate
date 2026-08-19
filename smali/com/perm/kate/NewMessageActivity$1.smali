.class Lcom/perm/kate/NewMessageActivity$1;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewMessageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewMessageActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$1;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/kate/NewMessageActivity;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    invoke-static {}, Lcom/perm/kate/NewMessageActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    invoke-static {}, Lcom/perm/kate/NewMessageActivity;->allowSendTypingStatus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity$1;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {p1}, Lcom/perm/kate/NewMessageActivity;->access$100(Lcom/perm/kate/NewMessageActivity;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
