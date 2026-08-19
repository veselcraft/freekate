.class Lcom/perm/kate/session/Session$2;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 245
    iput-object p2, p0, Lcom/perm/kate/session/Session$2;->val$activity:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 249
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/perm/kate/session/Session$2;->val$activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u043b\u0438\u0446\u0435\u043d\u0437\u0438\u044e \u043c\u0443\u0437\u044b\u043a\u0438. \u041d\u0435\u043a\u043e\u0442\u043e\u0440\u044b\u0435 \u043f\u0435\u0441\u043d\u0438 \u043c\u043e\u0433\u0443\u0442 \u0431\u044b\u0442\u044c \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u044b. \u0427\u0442\u043e\u0431\u044b \u0438\u0441\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u043d\u0430\u0436\u043c\u0438\u0442\u0435 \u0410\u0443\u0434\u0438\u043e - \u041c\u0435\u043d\u044e - \u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u043b\u0438\u0446\u0435\u043d\u0437\u0438\u0438"

    .line 250
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0398

    const/4 v2, 0x0

    .line 251
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
