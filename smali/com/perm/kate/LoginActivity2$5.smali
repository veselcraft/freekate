.class Lcom/perm/kate/LoginActivity2$5;
.super Ljava/lang/Object;
.source "LoginActivity2.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/LoginActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LoginActivity2;


# direct methods
.method constructor <init>(Lcom/perm/kate/LoginActivity2;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$5;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 230
    iget-object p1, p0, Lcom/perm/kate/LoginActivity2$5;->this$0:Lcom/perm/kate/LoginActivity2;

    iget-object p1, p1, Lcom/perm/kate/LoginActivity2;->pass:Landroid/widget/EditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/LoginActivity2$5;->this$0:Lcom/perm/kate/LoginActivity2;

    iget-object p1, p1, Lcom/perm/kate/LoginActivity2;->pass:Landroid/widget/EditText;

    new-instance p2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {p2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    return-void
.end method
