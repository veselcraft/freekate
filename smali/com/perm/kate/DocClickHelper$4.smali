.class Lcom/perm/kate/DocClickHelper$4;
.super Ljava/lang/Object;
.source "DocClickHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocClickHelper;

.field final synthetic val$doc_id:J

.field final synthetic val$et_message:Landroid/widget/EditText;

.field final synthetic val$owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/DocClickHelper;Landroid/widget/EditText;JJ)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/perm/kate/DocClickHelper$4;->this$0:Lcom/perm/kate/DocClickHelper;

    iput-object p2, p0, Lcom/perm/kate/DocClickHelper$4;->val$et_message:Landroid/widget/EditText;

    iput-wide p3, p0, Lcom/perm/kate/DocClickHelper$4;->val$owner_id:J

    iput-wide p5, p0, Lcom/perm/kate/DocClickHelper$4;->val$doc_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 150
    iget-object p1, p0, Lcom/perm/kate/DocClickHelper$4;->val$et_message:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x80

    if-le p2, v0, :cond_0

    const/4 p2, 0x0

    const/16 v0, 0x7f

    .line 154
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v5, p1

    .line 155
    iget-object v0, p0, Lcom/perm/kate/DocClickHelper$4;->this$0:Lcom/perm/kate/DocClickHelper;

    iget-wide v1, p0, Lcom/perm/kate/DocClickHelper$4;->val$owner_id:J

    iget-wide v3, p0, Lcom/perm/kate/DocClickHelper$4;->val$doc_id:J

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/DocClickHelper;->access$600(Lcom/perm/kate/DocClickHelper;JJLjava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/DocClickHelper$4;->this$0:Lcom/perm/kate/DocClickHelper;

    invoke-static {p1}, Lcom/perm/kate/DocClickHelper;->access$100(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object p1

    const p2, 0x7f0f0537

    invoke-virtual {p1, p2}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    :goto_0
    return-void
.end method
