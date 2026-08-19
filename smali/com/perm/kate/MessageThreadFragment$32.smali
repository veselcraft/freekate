.class Lcom/perm/kate/MessageThreadFragment$32;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 1941
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1944
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$32;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-boolean v0, p1, Lcom/perm/kate/MessageThreadFragment;->is_editting:Z

    if-eqz v0, :cond_0

    const-string v0, "\u0412 \u0440\u0435\u0436\u0438\u043c\u0435 \u043c\u0433\u043d\u043e\u0432\u0435\u043d\u043d\u043e\u0439 \u043e\u0442\u043f\u0440\u0432\u043a\u0438 \u043f\u0440\u0438\u043a\u0440\u0435\u043f\u043b\u044f\u0442\u044c \u0444\u043e\u0442\u043e \u043c\u043e\u0436\u043d\u043e \u0442\u043e\u043b\u044c\u043a\u043e \u0434\u043e \u0442\u043e\u0433\u043e, \u043a\u0430\u043a \u0432\u044b \u043d\u0430\u0447\u0430\u043b\u0438 \u043d\u0430\u0431\u0438\u0440\u0430\u0442\u044c \u0442\u0435\u043a\u0441\u0442 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f."

    .line 1945
    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(Ljava/lang/String;)V

    return-void

    .line 1948
    :cond_0
    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$4200(Lcom/perm/kate/MessageThreadFragment;)V

    return-void
.end method
