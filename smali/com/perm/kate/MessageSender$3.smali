.class Lcom/perm/kate/MessageSender$3;
.super Ljava/lang/Object;
.source "MessageSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageSender;Landroid/app/Activity;)V
    .locals 0

    .line 144
    iput-object p2, p0, Lcom/perm/kate/MessageSender$3;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 147
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/perm/kate/MessageSender$3;->val$a:Landroid/app/Activity;

    const v2, 0x7f0f0491

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 149
    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 150
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/perm/kate/MessageSender$3;->val$a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 152
    new-instance v0, Lcom/perm/kate/MessageSender$3$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageSender$3$1;-><init>(Lcom/perm/kate/MessageSender$3;)V

    const v3, 0x7f0f03a9

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0f01c5

    const/4 v3, 0x0

    .line 158
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 161
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const v1, 0x102000b

    .line 163
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
