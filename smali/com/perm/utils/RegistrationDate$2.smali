.class Lcom/perm/utils/RegistrationDate$2;
.super Ljava/lang/Object;
.source "RegistrationDate.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$date:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/perm/utils/RegistrationDate$2;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-object p2, p0, Lcom/perm/utils/RegistrationDate$2;->val$date:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/perm/utils/RegistrationDate$2;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-object v1, p0, Lcom/perm/utils/RegistrationDate$2;->val$date:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/perm/utils/RegistrationDate;->access$300(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V

    return-void
.end method
