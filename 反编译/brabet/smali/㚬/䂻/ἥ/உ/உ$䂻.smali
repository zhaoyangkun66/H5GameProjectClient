.class public L㚬/䂻/ἥ/உ/உ$䂻;
.super L㚬/䂻/ἥ/உ/உ$ᆻ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L㚬/䂻/ἥ/உ/உ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u40bb"
.end annotation


# instance fields
.field public final உ:Landroid/graphics/drawable/Animatable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Animatable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, L㚬/䂻/ἥ/உ/உ$ᆻ;-><init>(L㚬/䂻/ἥ/உ/உ$உ;)V

    iput-object p1, p0, L㚬/䂻/ἥ/உ/உ$䂻;->உ:Landroid/graphics/drawable/Animatable;

    return-void
.end method


# virtual methods
.method public 㚬()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ἥ/உ/உ$䂻;->உ:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    return-void
.end method

.method public 㺴()V
    .locals 1

    iget-object v0, p0, L㚬/䂻/ἥ/உ/உ$䂻;->உ:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    return-void
.end method
