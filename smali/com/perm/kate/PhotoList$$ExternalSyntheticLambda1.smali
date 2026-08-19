.class public final synthetic Lcom/perm/kate/PhotoList$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/perm/kate/PhotoList;

.field public final synthetic f$1:Lcom/perm/kate/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/perm/kate/PhotoList;Lcom/perm/kate/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/PhotoList$$ExternalSyntheticLambda1;->f$0:Lcom/perm/kate/PhotoList;

    iput-object p2, p0, Lcom/perm/kate/PhotoList$$ExternalSyntheticLambda1;->f$1:Lcom/perm/kate/BaseActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/perm/kate/PhotoList$$ExternalSyntheticLambda1;->f$0:Lcom/perm/kate/PhotoList;

    iget-object v1, p0, Lcom/perm/kate/PhotoList$$ExternalSyntheticLambda1;->f$1:Lcom/perm/kate/BaseActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/PhotoList;->$r8$lambda$HhzNQA5jfC7bedPfpUFMGb6iaGs(Lcom/perm/kate/PhotoList;Lcom/perm/kate/BaseActivity;)V

    return-void
.end method
