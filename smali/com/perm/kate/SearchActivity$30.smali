.class Lcom/perm/kate/SearchActivity$30;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;)V
    .locals 0

    .line 1124
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1133
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$7100(Lcom/perm/kate/SearchActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1134
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$7100(Lcom/perm/kate/SearchActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1137
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1138
    invoke-static {}, Lcom/perm/kate/HiddenChats;->getPin()Ljava/lang/String;

    move-result-object v0

    .line 1139
    sget-boolean v2, Lcom/perm/kate/HiddenChats;->locked:Z

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1140
    sput-boolean v1, Lcom/perm/kate/HiddenChats;->locked:Z

    const/4 p1, 0x1

    .line 1141
    sput-boolean p1, Lcom/perm/kate/MessagesFragment;->redisplay_data:Z

    .line 1142
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    const v0, 0x7f0f0111

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 1143
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 1147
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object p1

    sget-object v0, Lcom/perm/kate/SearchActivity$SearchType;->Message:Lcom/perm/kate/SearchActivity$SearchType;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object p1

    sget-object v0, Lcom/perm/kate/SearchActivity$SearchType;->Dialogs:Lcom/perm/kate/SearchActivity$SearchType;

    if-eq p1, v0, :cond_3

    return-void

    .line 1149
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$300(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$MessagesSearchType;

    move-result-object p1

    sget-object v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;->UserMessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    if-ne p1, v0, :cond_4

    return-void

    .line 1151
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$7200(Lcom/perm/kate/SearchActivity;)V

    .line 1152
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$7300(Lcom/perm/kate/SearchActivity;)V

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
