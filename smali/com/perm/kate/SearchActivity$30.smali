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
    .param p1, "this$0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x0

    .line 1085
    iget-object v2, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$6800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1086
    iget-object v2, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$6800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1089
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1090
    .local v1, "query":Ljava/lang/String;
    invoke-static {}, Lcom/perm/kate/HiddenChats;->getPin()Ljava/lang/String;

    move-result-object v0

    .line 1091
    .local v0, "pin":Ljava/lang/String;
    sget-boolean v2, Lcom/perm/kate/HiddenChats;->locked:Z

    if-eqz v2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1092
    sput-boolean v3, Lcom/perm/kate/HiddenChats;->locked:Z

    .line 1093
    const/4 v2, 0x1

    sput-boolean v2, Lcom/perm/kate/MessagesFragment;->redisplay_data:Z

    .line 1094
    iget-object v2, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    const v3, 0x7f0700c8

    invoke-virtual {v2, v3}, Lcom/perm/kate/SearchActivity;->displayToast(I)V

    .line 1095
    iget-object v2, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {v2}, Lcom/perm/kate/SearchActivity;->finish()V

    .line 1105
    :cond_1
    :goto_1
    return-void

    .line 1086
    .end local v0    # "pin":Ljava/lang/String;
    .end local v1    # "query":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x8

    goto :goto_0

    .line 1099
    .restart local v0    # "pin":Ljava/lang/String;
    .restart local v1    # "query":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object v2

    sget-object v3, Lcom/perm/kate/SearchActivity$SearchType;->Message:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne v2, v3, :cond_1

    .line 1101
    iget-object v2, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$300(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$MessagesSearchType;

    move-result-object v2

    sget-object v3, Lcom/perm/kate/SearchActivity$MessagesSearchType;->UserMessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    if-eq v2, v3, :cond_1

    .line 1103
    iget-object v2, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$6900(Lcom/perm/kate/SearchActivity;)V

    .line 1104
    iget-object v2, p0, Lcom/perm/kate/SearchActivity$30;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchActivity;->access$7000(Lcom/perm/kate/SearchActivity;)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1081
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1078
    return-void
.end method
